function autograder(rubricArray) 						% Sind sie das Python?
										% Nein, wir sind der MATLAB!
	contents = dir;
	studentMask = ~strcmp({contents.name}, 'solutions')...
	& ~strcmp({contents.name}, '.') & ~strcmp({contents.name}, '..');
	students = contents(studentMask & [contents.isdir]); 			% Zankoku na T.A. no you ni
										% Freshman yo shinwa ni nare!
	for k = 1:length(students)
		students(k).text = ['Feedback for ' students(k).name '\n\n'];
		students(k).score = 0;
	end
	for m = 1:length(rubricArray)
		rubric = rubricArray(m);
		for k = 1:length(students)
			students(k).text = [students(k).text 'Problem: ' rubric.name '\nTest Cases:\n'];
			students(k).problemScore = 0;
		end
		mkdir private
		'foo'
		cd private
		for j = length(rubric.bannedFunctions)
			fh = fopen([rubric.bannedFunctions(j) '.m'], 'w');
			fprintf('gotcha');
			fclose(fh);
		end
		cd ..
		for i = 1:length(rubric.testCases)
			cd solutions;
			testCase = rubric.testCases{i};
			correct = cell(1,nargout(rubric.name));
			if iscell(testCase)
				[correct{:}] = feval(rubric.name, testCase{:});
			else
				[correct{:}] = feval(rubric.name, testCase);
			end
			cd ../
			for k = 1:length(students)
				student = students(k);
				cd(student.name);				% Anata no na wa?
				testCase
				try						% Do or do not! There is no try.
					studAns = cell(1,nargout(rubric.name));
					if iscell(testCase)
						[studAns{:}] = feval(rubric.name, testCase{:});
					else
						[studAns{:}] = feval(rubric.name, testCase);
					end
					correctness = isequal(studAns, correct);
				catch err						% You were right about one thing,
										% master: the negotiations were short!
					'foo'
					correctness = 0;
				end
				students(k).text = [student.text sprintf('Score for case %d: %d', i, correctness*rubric.grades(i)) '\n'];
				students(k).problemScore = student.problemScore + correctness*rubric.grades(i);
				students(k).score = student.score + correctness*rubric.grades(i);
				cd ../
			end
		end
		for k = 1:length(students)
			students(k).text = [students(k).text sprintf('score for this problem: %d\n\n', students(k).problemScore)];
		end
		rmdir private;
	end
	grade_arr = {'Student' 'Total Score'};
	for k = 1:length(students)
		grade_arr(k+1,1) = {students(k).name};
		grade_arr(k+1,2) = {students(k).score};
		fh = fopen([students(k).name '_feedback.txt'], 'w');
		fprintf(fh,[students(k).text sprintf('Overall Score: %d / 100', students(k).score)] );
		fclose(fh);
	end
	grade_arr
	%xlswrite('grades.xls',grade_arr);
end
