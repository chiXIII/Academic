try
	errorStruct.message = 'Gotcha!';
	errorStruct.identifier = 'Autograder:BannedFunction';
	error(errorStruct);
catch er
	er.identifier
end
