set archivedTasks to ""
tell application "TaskPaper"
	tell front document
		-- title of day one log entry, defaults to name of TaskPaper document
		set archived_tasks to "## " & name & return
		-- an array of tags to be removed before logging
		set unwanted_tags to {"na", "next", "priority", "waiting"}
		repeat with _entry in search with query "project != Archive and @done"
			-- only interact with entity of type task that have the done tag
			if entry type of _entry is task type and (exists (tag named "done" of _entry)) then
				-- remove unwanted tags
				repeat with _tag in unwanted_tags
					if exists (tag named _tag of _entry) then delete tag named _tag of _entry
				end repeat
				
				-- if there's no project tag on the task, 
				-- add the task's current project as a tag
				if not (exists (tag named "project" of _entry)) then
					tell _entry to make tag with properties {name:"project", value:(name of containing project of _entry as rich text)}
				end if
				-- collect notes for each task
				set task_notes to ""
				repeat with _notes in _entry
					set task_notes to task_notes & return & "     " & (text line of notes in _entry) as rich text
				end repeat
				-- append the full text of the entry, including tags, and notes to our log
				set archived_tasks to archived_tasks & (text line of _entry) & task_notes
				-- move the entry to the 'Archive' project
				move entry id (id of _entry) to beginning of entries of project "Archive"
			end if
		end repeat
	end tell
end tell
-- log done tasks to Day One using jrnl
do shell script "echo " & (quoted form of archived_tasks) & " |tr -d \"\\t\"|/usr/local/bin/jrnl"

