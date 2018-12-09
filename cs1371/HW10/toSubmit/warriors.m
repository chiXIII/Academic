function [updated statement] = warriors(clans, stat)
	vals = [clans.(stat)];
	[~,inds] = sort(vals, 'descend');
	updated = clans(inds);
	updated(1).(stat) = 2*updated(1).(stat);
	updated(end).(stat) = 0;
	updated(1).Territories = [updated(1).Territories updated(end).Territories];
	updated(end).Territories = {};
	statement = sprintf('Following the warrior code, fearless leader %s led %s to victory against %s.', updated(1).Leader, updated(1).Name, updated(end).Name);
end
