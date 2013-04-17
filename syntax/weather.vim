if version < 700
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match weatherTitle "------------------------  WEATHER-VIM  ------------------------"
syn keyword weatherToday ç°ì˙
syn keyword weatherTommorow ñæì˙
syn keyword weatherDayAfterTommorow ñæå„ì˙
syn match weatherSunny   "ê∞"
syn match weatherCloudy  "ì‹"
syn match weatherRain    "âJ"
syn match weatherSnow    "ê·"
syn match weatherThunder "óã"
syn match weatherAll     ">>ëSçë"
syn match weatherDate    "(\d\d\d\d-\d\d-\d\d)"
syn match weatherHL      "---------------------------------------------------------------"

hi default link weatherTitle Function
hi default link weatherToday Title
hi default link weatherTommorow Title
hi default link weatherDayAfterTommorow Title
hi default link weatherSunny Directory
hi default link weatherCloudy Underlined
hi default link weatherThunder Error
hi default link weatherRain Type
hi default link weatherSnow PreProc
hi default link weatherDate Visual
hi default link weatherHL Debug
hi default link weatherAll Underlined

let b:current_syntax = 'weather'
