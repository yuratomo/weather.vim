if exists('g:loaded_weather') && g:loaded_weather == 1
  finish
endif

command! -nargs=* -complete=customlist,weather#list Weather :call weather#all(<f-args>)

let g:loaded_weather = 1
