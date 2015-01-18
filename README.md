# taskpaperscripts

A collection of scripts used in my [TaskPaper](http://www.hogbaysoftware.com/products/taskpaper) workflow.

## day_one_log.scpt
Log completed TaskPaper tasks to [Day One](http://dayoneapp.com/). The heavy lifting done by [Brett Terpstra](https://twitter.com/ttscoff) in [this blog](http://brettterpstra.com/2012/02/23/log-taskpaper-archives-to-day-one/).
*This fork adds any notes attached to a task to the Day One entry and changes the integration with Day One from the Day One CLI to [jrnl](http://maebert.github.io/jrnl/)*

Switching from the Day One CLI to jrnl allowed for more flexible use of Day One's tags.

### Requirements

* [Day One](http://dayoneapp.com/)
* [jrnl](http://maebert.github.io/jrnl/) configured to [create entries in Day One](http://maebert.github.io/jrnl/advanced.html#dayone-integration)
* [TaskPaper](http://www.hogbaysoftware.com/products/taskpaper) 

### Installation

* Throw day_one_log.scpt into `~/Library/Scripts/Applications/TaskPaper`
* Look through the script for any reference to `CONFIG` and make a decision to keep the defaults or change these values.
* Make the script easily executable. I personally am using an [Alfred](http://www.alfredapp.com/) workflow.