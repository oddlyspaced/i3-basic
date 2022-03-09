#!/usr/bin/env bash

## Original Author  : Aditya Shakya
## Modified By	    : Hardik Srivastava

dir="$HOME/.config/rofi/app"

# dark
ALPHA="#00000000"
BG="#282a36ff"
FG="#f8f8f2ff"
SELECT="#44475aff"

# accent colors
ACCENT="#FF79C6ff"

# overwrite colors file
cat > $dir/colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  $BG;
	  se:  $SELECT;
	  fg:  $FG;
	  ac:  $ACCENT;
	}
EOF

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"style.rasi"
