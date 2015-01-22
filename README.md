# taskpaperscripts

A collection of scripts used in my [TaskPaper](http://www.hogbaysoftware.com/products/taskpaper) workflow.

## day_one_log.scpt
Log completed TaskPaper tasks to [Day One](http://dayoneapp.com/). The heavy lifting done by [Brett Terpstra](https://twitter.com/ttscoff) in [this blog](http://brettterpstra.com/2012/02/23/log-taskpaper-archives-to-day-one/).
*This fork adds any notes attached to a task to the Day One entry and changes the integration with Day One from the Day One CLI to [jrnl](http://maebert.github.io/jrnl/)*

Switching from the Day One CLI to jrnl allowed for more flexible use of Day One's tags.

### Requirements

* [Day One](http://dayoneapp.com/)
* [TaskPaper](http://www.hogbaysoftware.com/products/taskpaper) 
* [jrnl](http://maebert.github.io/jrnl/) configured to [create entries in Day One](http://maebert.github.io/jrnl/advanced.html#dayone-integration)

*jrnl is used in place of the Day One CLI because of its native support for tags in the @ format already used by TaskPaper*

### Installation

* Throw day_one_log.scpt into `~/Library/Scripts/Applications/TaskPaper`
* Look through the script for any reference to `CONFIG` and make a decision to keep the defaults or change these values.
* Make the script easily executable. I personally am using an [Alfred](http://www.alfredapp.com/) v2 [workflow](#taskpaper_dayone_logalfredworkflow).

## taskpaper_dayone_log.alfredworkflow

[Alfred](http://www.alfredapp.com/) workflow for use with [day_one_log.scpt](#day_one_logscpt)

### Requirements

* [day_one_log.scpt](#day_one_logscpt)
* [Alfred v2](http://www.alfredapp.com/)

### Installation

* Obtain the workflow file by one of these options*(other methods are possible)*:
    - clone this repo
    - `wget https://raw.githubusercontent.com/underscorephil/taskpaperscripts/master/taskpaper_dayone_log.alfredworkflow`
    - copy paste
* Follow the [procedures for installing an Alfred workflow](http://support.alfredapp.com/workflows:installing)

### Use

It is configured by default to run the script on the keyword `tpclean`. It should be trivial to customize this by editing the 'tpclean' `keyword` element in the workflow editor

## hermitcan_solar_dark.taskpapertheme

[Solarized Dark](http://ethanschoonover.com/solarized) TaskPaper theme based on [tundramonkey's](https://gist.github.com/tundramonkey) theme [HelvetiCan](https://gist.github.com/tundramonkey/5056539) using the [Hermit fontset](https://pcaro.es/p/hermit/)

![Screenshot](http://underscorephil.github.io/taskpaperscripts/hermitcan_solar_dark.png)
### Requirements

* [TaskPaper](http://www.hogbaysoftware.com/products/taskpaper) 
* [Hermit, Hermit Light, Hermit Bold](https://pcaro.es/p/hermit/#downloads)

### Installation

* Place gently into `~/Library/Application Support/TaskPaper/Themes`
* Choose hermitcan_solar_dark from the preference menu
    *It may be necessary to restart TaskPaper for the theme to appear*

