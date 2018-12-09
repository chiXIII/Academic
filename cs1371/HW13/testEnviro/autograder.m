function autograder(rubricArray)

	contents = dir;
	studentMask = ~strcmp({contents.name}, 'solutions')...
	& ~strcmp({contents.name}, '.') & ~strcmp({contents.name}, '..');
	students = contents(studentMask & [contents.isdir]);					% Get all directories which contain students'
												% submissions

	for k = 1:length(students)								% add somewhere to store the grade info
												% to the structure returned by dir
		students(k).text = ['Feedback for ' students(k).name '\n\n'];
		students(k).score = 0;
	end
	for m = 1:length(rubricArray)								% Iterate through problems
		rubric = rubricArray(m);
		for k = 1:length(students)
			students(k).text = [students(k).text 'Problem: ' rubric.name '\nTest Cases:\n'];
			students(k).problemScore = 0;
		end

		for i = 1:length(rubric.testCases)						% iterate through test cases
			cd solutions;
			testCase = rubric.testCases{i};
			correct = cell(1,nargout(rubric.name));
			if iscell(testCase)							% Get correct answers
				[correct{:}] = feval(rubric.name, testCase{:});
			else
				[correct{:}] = feval(rubric.name, testCase);
			end
			cd ../
			for k = 1:length(students)						% iterate through students
				student = students(k);
				cd(student.name);
				try								% catch any errors or missing files
					studAns = cell(1,nargout(rubric.name));
					if iscell(testCase)
						[studAns{:}] = feval(rubric.name, testCase{:});
					else
						[studAns{:}] = feval(rubric.name, testCase);
					end
					correctness = isequal(studAns, correct);		% check if students answer matches
												% correct answer, including nargout
				catch
					correctness = 0;
				end
				students(k).text = [student.text sprintf('Score for case %d: %d', i, correctness*rubric.grades(i)) '\n'];
												% add score info to char which will be
												% written to text file
				students(k).problemScore = student.problemScore + correctness*rubric.grades(i);
				students(k).score = student.score + correctness*rubric.grades(i);
				cd ../
			end
		end
		for k = 1:length(students)
			students(k).text = [students(k).text sprintf('score for this problem: %d\n\n', students(k).problemScore)];
		end
	end
	grade_arr = {'Student' 'Total Score'};							% initialize array from which to write xls
	for k = 1:length(students)
		grade_arr(k+1,1) = {students(k).name};
		grade_arr(k+1,2) = {students(k).score};
		fh = fopen([students(k).name '_feedback.txt'], 'w');				% write the feedback here
		fprintf(fh,[students(k).text sprintf('Overall Score: %d / 100', students(k).score)] );
		fclose(fh);
	end
	grade_arr										% display grades
	%xlswrite('grades.xls',grade_arr);							% write grades to xls (commented out
												% because not Windows OS).
end
