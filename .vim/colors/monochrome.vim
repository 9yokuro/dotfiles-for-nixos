vim9script

highlight clear

if exists("syntax_on")
  syntax reset
endif

g:colors_name = "monochrome"

const colors: dict<string> = {
  white_0: "#FFFFFF",
  white_1: "#E6E6E6",
  white_2: "#CCCCCC",
  white_3: "#BFBFBF",
  white_4: "#B3B3B3",
  white_5: "#A6A6A6",

  grey_0: "#999999",
  grey_1: "#8C8C8C",
  grey_2: "#808080",
  grey_3: "#737373",
  grey_4: "#666666",
  grey_5: "#595959",

  black_0: "#4D4D4D",
  black_1: "#404040",
  black_2: "#333333",
  black_3: "#262626",
  black_4: "#0D0D0D",
  black_5: "#000000",
}

const fg_white_0: string = "guifg=" .. colors.white_0
const fg_white_1: string = "guifg=" .. colors.white_1
const fg_white_2: string = "guifg=" .. colors.white_2
const fg_white_3: string = "guifg=" .. colors.white_3
const fg_white_4: string = "guifg=" .. colors.white_4
const fg_white_5: string = "guifg=" .. colors.white_5
const fg_grey_0: string = "guifg=" .. colors.grey_0
const fg_grey_1: string = "guifg=" .. colors.grey_1
const fg_grey_2: string = "guifg=" .. colors.grey_2
const fg_grey_3: string = "guifg=" .. colors.grey_3
const fg_grey_4: string = "guifg=" .. colors.grey_4
const fg_grey_5: string = "guifg=" .. colors.grey_5
const fg_black_0: string = "guifg=" .. colors.black_0
const fg_black_1: string = "guifg=" .. colors.black_1
const fg_black_2: string = "guifg=" .. colors.black_2
const fg_black_3: string = "guifg=" .. colors.black_3
const fg_black_4: string = "guifg=" .. colors.black_4
const fg_black_5: string = "guifg=" .. colors.black_5
const fg_none: string = "guifg=NONE"

const bg_white_0: string = "guibg=" .. colors.white_0
const bg_white_1: string = "guibg=" .. colors.white_1
const bg_white_2: string = "guibg=" .. colors.white_2
const bg_white_3: string = "guibg=" .. colors.white_3
const bg_white_4: string = "guibg=" .. colors.white_4
const bg_white_5: string = "guibg=" .. colors.white_5
const bg_grey_0: string = "guibg=" .. colors.grey_0
const bg_grey_1: string = "guibg=" .. colors.grey_1
const bg_grey_2: string = "guibg=" .. colors.grey_2
const bg_grey_3: string = "guibg=" .. colors.grey_3
const bg_grey_4: string = "guibg=" .. colors.grey_4
const bg_grey_5: string = "guibg=" .. colors.grey_5
const bg_black_0: string = "guibg=" .. colors.black_0
const bg_black_1: string = "guibg=" .. colors.black_1
const bg_black_2: string = "guibg=" .. colors.black_2
const bg_black_3: string = "guibg=" .. colors.black_3
const bg_black_4: string = "guibg=" .. colors.black_4
const bg_black_5: string = "guibg=" .. colors.black_5
const bg_none: string = "guibg=NONE"

const bold: string = "cterm=bold gui=bold"
const italic: string = "cterm=italic gui=italic"
const reverse: string = "cterm=reverse gui=reverse"
const underline: string = "cterm=underline gui=underline"
const none: string = "cterm=NONE gui=NONE"

execute "highlight Comment" fg_black_2 bg_none italic
execute "highlight Constant" fg_white_2 bg_none none
execute "highlight Identifier" fg_grey_1 bg_none none
execute "highlight Statement" fg_grey_3 bg_none none
execute "highlight PreProc" fg_grey_0 bg_none italic
execute "highlight Type" fg_white_5 bg_none none
execute "highlight Special" fg_grey_4 bg_none none
execute "highlight Underlined" fg_black_0 bg_none underline
execute "highlight Error" fg_white_0 bg_none none
execute "highlight Todo" fg_black_3 bg_white_3 none
execute "highlight Added" fg_white_3 bg_none none
execute "highlight Changed" fg_white_4 bg_none none
execute "highlight Removed" fg_grey_2 bg_none none
execute "highlight ColorColumn" fg_white_1 bg_grey_3 none
execute "highlight Normal" fg_white_1 bg_black_4 none
