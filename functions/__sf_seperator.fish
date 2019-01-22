#
# Prompt seperator
#

function __sf_seperator -d "Display the prompt seperator"
	# ------------------------------------------------------------------------------
	# Configuration
	# ------------------------------------------------------------------------------

	__sf_util_set_default SPACEFISH_PROMPT_SEPERATOR_SHOW false
	# https://en.wikipedia.org/wiki/Box-drawing_character
	__sf_util_set_default SPACEFISH_PROMPT_SEPARATOR_SYMBOL "═"
	__sf_util_set_default SPACEFISH_PROMPT_SEPARATOR_COLOR black

	set_color $SPACEFISH_PROMPT_SEPARATOR_COLOR
	for ch in (seq $COLUMNS)
		echo -n $SPACEFISH_PROMPT_SEPARATOR_SYMBOL
	end
	echo
end
