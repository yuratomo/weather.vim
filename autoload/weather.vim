let s:title = '                   ---  WEATHER-VIM  ---'
let s:toAll = '>>‘S‘'
let s:locations = []
let [s:WIN_ALL, s:WIN_CITY] = range(2)
let g:weather#city_list = [
  \ { "name":"“¹–k"},
  \ { "name":"’t“à", "id":"011000"},
  \ { "name":"ˆ®ì", "id":"012010"},
  \ { "name":"—¯–G", "id":"012020"},
  \ { "name":"“¹“Œ"},
  \ { "name":"–Ô‘–", "id":"013010"},
  \ { "name":"–kŒ©", "id":"013020"},
  \ { "name":"–ä•Ê", "id":"013030"},
  \ { "name":"ªº", "id":"014010"},
  \ { "name":"‹ú˜H", "id":"014020"},
  \ { "name":"‘ÑL", "id":"014030"},
  \ { "name":"“¹“ì"},
  \ { "name":"º—–", "id":"015010"},
  \ { "name":"‰Y‰Í", "id":"015020"},
  \ { "name":"“¹‰›"},
  \ { "name":"D–y", "id":"016010"},
  \ { "name":"ŠâŒ©‘ò", "id":"016020"},
  \ { "name":"‹ä’mˆÀ", "id":"016030"},
  \ { "name":"“¹“ì"},
  \ { "name":"”ŸŠÙ", "id":"017010"},
  \ { "name":"]·", "id":"017020"},
  \ { "name":"ÂXŒ§"},
  \ { "name":"ÂX", "id":"020010"},
  \ { "name":"‚Ş‚Â", "id":"020020"},
  \ { "name":"”ªŒË", "id":"020030"},
  \ { "name":"ŠâèŒ§"},
  \ { "name":"·‰ª", "id":"030010"},
  \ { "name":"‹{ŒÃ", "id":"030020"},
  \ { "name":"‘å‘D“n", "id":"030030"},
  \ { "name":"‹{éŒ§"},
  \ { "name":"å‘ä", "id":"040010"},
  \ { "name":"”’Î", "id":"040020"},
  \ { "name":"H“cŒ§"},
  \ { "name":"H“c", "id":"050010"},
  \ { "name":"‰¡è", "id":"050020"},
  \ { "name":"RŒ`Œ§"},
  \ { "name":"RŒ`", "id":"060010"},
  \ { "name":"•Ä‘ò", "id":"060020"},
  \ { "name":"ğ“c", "id":"060030"},
  \ { "name":"V¯", "id":"060040"},
  \ { "name":"•Ÿ“‡Œ§"},
  \ { "name":"•Ÿ“‡", "id":"070010"},
  \ { "name":"¬–¼•l", "id":"070020"},
  \ { "name":"á¼", "id":"070030"},
  \ { "name":"ˆïéŒ§"},
  \ { "name":"…ŒË", "id":"080010"},
  \ { "name":"“y‰Y", "id":"080020"},
  \ { "name":"“È–ØŒ§"},
  \ { "name":"‰F“s‹{", "id":"090010"},
  \ { "name":"‘å“cŒ´", "id":"090020"},
  \ { "name":"ŒQ”nŒ§"},
  \ { "name":"‘O‹´", "id":"100010"},
  \ { "name":"‚İ‚È‚©‚İ", "id":"100020"},
  \ { "name":"é‹ÊŒ§"},
  \ { "name":"‚³‚¢‚½‚Ü", "id":"110010"},
  \ { "name":"ŒF’J", "id":"110020"},
  \ { "name":"’•ƒ", "id":"110030"},
  \ { "name":"ç—tŒ§"},
  \ { "name":"ç—t", "id":"120010"},
  \ { "name":"’¶q", "id":"120020"},
  \ { "name":"ŠÙR", "id":"120030"},
  \ { "name":"“Œ‹“s"},
  \ { "name":"“Œ‹", "id":"130010"},
  \ { "name":"‘å“‡", "id":"130020"},
  \ { "name":"”ªä“‡", "id":"130030"},
  \ { "name":"•ƒ“‡", "id":"130040"},
  \ { "name":"_“ŞìŒ§"},
  \ { "name":"‰¡•l", "id":"140010"},
  \ { "name":"¬“cŒ´", "id":"140020"},
  \ { "name":"VŠƒŒ§"},
  \ { "name":"VŠƒ", "id":"150010"},
  \ { "name":"’·‰ª", "id":"150020"},
  \ { "name":"‚“c", "id":"150030"},
  \ { "name":"‘Šì", "id":"150040"},
  \ { "name":"•xRŒ§"},
  \ { "name":"•xR", "id":"160010"},
  \ { "name":"•š–Ø", "id":"160020"},
  \ { "name":"ÎìŒ§"},
  \ { "name":"‹à‘ò", "id":"170010"},
  \ { "name":"—Ö“‡", "id":"170020"},
  \ { "name":"•ŸˆäŒ§"},
  \ { "name":"•Ÿˆä", "id":"180010"},
  \ { "name":"“Ö‰ê", "id":"180020"},
  \ { "name":"R—œŒ§"},
  \ { "name":"b•{", "id":"190010"},
  \ { "name":"‰ÍŒûŒÎ", "id":"190020"},
  \ { "name":"’·–ìŒ§"},
  \ { "name":"’·–ì", "id":"200010"},
  \ { "name":"¼–{", "id":"200020"},
  \ { "name":"”Ñ“c", "id":"200030"},
  \ { "name":"Šò•ŒŒ§"},
  \ { "name":"Šò•Œ", "id":"210010"},
  \ { "name":"‚R", "id":"210020"},
  \ { "name":"Ã‰ªŒ§"},
  \ { "name":"Ã‰ª", "id":"220010"},
  \ { "name":"–Ô‘ã", "id":"220020"},
  \ { "name":"O“‡", "id":"220030"},
  \ { "name":"•l¼", "id":"220040"},
  \ { "name":"ˆ¤’mŒ§"},
  \ { "name":"–¼ŒÃ‰®", "id":"230010"},
  \ { "name":"–L‹´", "id":"230020"},
  \ { "name":"OdŒ§"},
  \ { "name":"’Ã", "id":"240010"},
  \ { "name":"”ö˜h", "id":"240020"},
  \ { "name":" ‰êŒ§"},
  \ { "name":"‘å’Ã", "id":"250010"},
  \ { "name":"•Fª", "id":"250020"},
  \ { "name":"‹“s•{"},
  \ { "name":"‹“s", "id":"260010"},
  \ { "name":"•‘’ß", "id":"260020"},
  \ { "name":"‘åã•{"},
  \ { "name":"‘åã", "id":"270000"},
  \ { "name":"•ºŒÉŒ§"},
  \ { "name":"_ŒË", "id":"280010"},
  \ { "name":"–L‰ª", "id":"280020"},
  \ { "name":"“Ş—ÇŒ§"},
  \ { "name":"“Ş—Ç", "id":"290010"},
  \ { "name":"•—‰®", "id":"290020"},
  \ { "name":"˜a‰ÌRŒ§"},
  \ { "name":"˜a‰ÌR", "id":"300010"},
  \ { "name":"’ª–¦", "id":"300020"},
  \ { "name":"’¹æŒ§"},
  \ { "name":"’¹æ", "id":"310010"},
  \ { "name":"•Äq", "id":"310020"},
  \ { "name":"“‡ªŒ§"},
  \ { "name":"¼]", "id":"320010"},
  \ { "name":"•l“c", "id":"320020"},
  \ { "name":"¼‹½", "id":"320030"},
  \ { "name":"‰ªRŒ§"},
  \ { "name":"‰ªR", "id":"330010"},
  \ { "name":"’ÃR", "id":"330020"},
  \ { "name":"L“‡Œ§"},
  \ { "name":"L“‡", "id":"340010"},
  \ { "name":"¯Œ´", "id":"340020"},
  \ { "name":"RŒûŒ§"},
  \ { "name":"‰ºŠÖ", "id":"350010"},
  \ { "name":"RŒû", "id":"350020"},
  \ { "name":"–öˆä", "id":"350030"},
  \ { "name":"”‹", "id":"350040"},
  \ { "name":"“¿“‡Œ§"},
  \ { "name":"“¿“‡", "id":"360010"},
  \ { "name":"“ú˜a²", "id":"360020"},
  \ { "name":"ìŒ§"},
  \ { "name":"‚¼", "id":"370000"},
  \ { "name":"ˆ¤•QŒ§"},
  \ { "name":"¼R", "id":"380010"},
  \ { "name":"V‹•l", "id":"380020"},
  \ { "name":"‰F˜a“‡", "id":"380030"},
  \ { "name":"‚’mŒ§"},
  \ { "name":"‚’m", "id":"390010"},
  \ { "name":"ºŒË–¦", "id":"390020"},
  \ { "name":"´…", "id":"390030"},
  \ { "name":"•Ÿ‰ªŒ§"},
  \ { "name":"•Ÿ‰ª", "id":"400010"},
  \ { "name":"”ª”¦", "id":"400020"},
  \ { "name":"”Ñ’Ë", "id":"400030"},
  \ { "name":"‹v—¯•Ä", "id":"400040"},
  \ { "name":"²‰êŒ§"},
  \ { "name":"²‰ê", "id":"410010"},
  \ { "name":"ˆÉ–œ—¢", "id":"410020"},
  \ { "name":"’·èŒ§"},
  \ { "name":"’·è", "id":"420010"},
  \ { "name":"²¢•Û", "id":"420020"},
  \ { "name":"ŒµŒ´", "id":"420030"},
  \ { "name":"•Ÿ]", "id":"420040"},
  \ { "name":"ŒF–{Œ§"},
  \ { "name":"ŒF–{", "id":"430010"},
  \ { "name":"ˆ¢‘h‰³•P", "id":"430020"},
  \ { "name":"‹[", "id":"430030"},
  \ { "name":"l‹g", "id":"430040"},
  \ { "name":"‘å•ªŒ§"},
  \ { "name":"‘å•ª", "id":"440010"},
  \ { "name":"’†’Ã", "id":"440020"},
  \ { "name":"“ú“c", "id":"440030"},
  \ { "name":"²”Œ", "id":"440040"},
  \ { "name":"‹{èŒ§"},
  \ { "name":"‹{è", "id":"450010"},
  \ { "name":"‰„‰ª", "id":"450020"},
  \ { "name":"“sé", "id":"450030"},
  \ { "name":"‚ç•ä", "id":"450040"},
  \ { "name":"­™“‡Œ§"},
  \ { "name":"­™“‡", "id":"460010"},
  \ { "name":"­‰®", "id":"460020"},
  \ { "name":"íq“‡", "id":"460030"},
  \ { "name":"–¼£", "id":"460040"},
  \ { "name":"‰«“êŒ§"},
  \ { "name":"“ß”e", "id":"471010"},
  \ { "name":"–¼Œì", "id":"471020"},
  \ { "name":"‹v•Ä“‡", "id":"471030"},
  \ { "name":"“ì‘å“Œ", "id":"472000"},
  \ { "name":"‹{ŒÃ“‡", "id":"473000"},
  \ { "name":"ÎŠ_“‡", "id":"474010"},
  \ { "name":"—^“ß‘“‡", "id":"474020"},
  \ ]

function! s:nr2byte(nr)
  if a:nr < 0x80
    return nr2char(a:nr)
  elseif a:nr < 0x800
    return nr2char(a:nr/64+192).nr2char(a:nr%64+128)
  else
    return nr2char(a:nr/4096%16+224).nr2char(a:nr/64%64+128).nr2char(a:nr%64+128)
  endif
endfunction

function! s:nr2enc_char(charcode)
  if &encoding == 'utf-8'
    return nr2char(a:charcode)
  endif
  let char = s:nr2byte(a:charcode)
  if strlen(char) > 1
    let char = strtrans(iconv(char, 'utf-8', &encoding))
  endif
  return char
endfunction

function! s:decode(json)
  let json = iconv(a:json, "utf-8", &encoding)
  let json = substitute(json, '\\n', '', 'g')
  let json = substitute(json, 'null', '""', 'g')
  let json = substitute(json, '\\u34;', '\\"', 'g')
  try
    let json = iconv(substitute(json, '\\u\(\x\x\x\x\)', '\=nr2char("0x".submatch(1), 1)', 'g'), 'utf-8', &enc)
  catch /.*/
    let json = substitute(json, '\\u\(\x\x\x\x\)', '\=s:nr2enc_char("0x".submatch(1))', 'g')
  endtry
  return eval(json)
endfunction

function! s:out(line)
  call setline(line('$')+1, a:line)
endfunction

function! weather#test()
  let g:json = s:decode(system('curl -L -s -k http://weather.livedoor.com/forecast/webservice/json/v1?city=110010'))
endfunction

function! weather#list(A, L, P)
  let items = []
  for item in g:weather#city_list
    if !has_key(item, 'id')
      continue
    endif
    if item.name =~ '^'.a:A
      call add(items, item.name)
    endif
  endfor
  return items
endfunction

function! weather#all(...)
  if !executable('curl')
    echoerr "cURL is not exist. Please install it."
    return
  endif

  if len(a:000) > 0
    let location = filter(copy(g:weather#city_list), 'v:val.name == a:000[0]')
    if len(location) > 0
      call weather#city(location[0].id)
    endif
    return
  endif

  " open window
  call s:open_win()
  let b:weather_win = s:WIN_ALL

  setl modifiable
  % delete _
  let first = 1
  for city in g:weather#city_list
    if !has_key(city, 'id')
      if first != 1
        call s:out('')
      else
        call setline(1, s:title)
        let first = 0
      endif
      call s:out(city.name)
    else
      call s:out('  ' . city.name)
    endif
  endfor
  setl nomodifiable
  call cursor(b:cline[s:WIN_ALL], 3)

endfunction

function! weather#city(city)
  " request
  try
    let json = s:decode(system('curl -L -s -k http://weather.livedoor.com/forecast/webservice/json/v1?city=' . a:city))
  catch /.*/
    echoerr "get weather data error."
    return
  endtry

  if len(json.forecasts) < 3
    call add(json.forecasts, {'date':'', 'dateLabel':'', 'telop':'', 'temperature':{}})
  endif

  " open window
  call s:open_win()
  let b:weather_win = s:WIN_CITY
  setl modifiable
  % delete _

  " title
  call setline(1, s:title)
  call setline(2, '')

  " weather
  call s:out(printf('| (%10s)  | (%10s)  | (%10s)  | %s',    json.forecasts[0].date, json.forecasts[1].date, json.forecasts[2].date, json.location.area))
  call s:out(printf('| %-10s    | %-10s    | %-10s    | %s', json.forecasts[0].dateLabel, json.forecasts[1].dateLabel, json.forecasts[2].dateLabel, json.location.prefecture))
  call s:out(printf('| %-10s    | %-10s    | %-10s    | %s', json.forecasts[0].telop, json.forecasts[1].telop, json.forecasts[2].telop, json.location.city))
  let templ = ''
  for idx in range(len(json.forecasts))
    if has_key(json.forecasts[idx].temperature, 'min')
      try
        let templ .= printf('| %-10s    ', json.forecasts[idx].temperature.min.celsius . ' ` ' . json.forecasts[idx].temperature.max.celsius . '‹')
      catch /.*/
        let templ .= '|               '
      endtry
    else
      let templ .= '|               '
    endif
  endfor
  call s:out(templ . '| ')
  call s:out('')

  " Ú×
  call s:out('---------------------------------------------------------------')
  call s:out(json.description.text)
  call s:out('')
  call s:out(s:toAll)
  call s:out('')

  " copyright
  call s:out('---------------------------------------------------------------')
  call s:out(json.copyright.title)
  call s:out(json.copyright.provider[0].name . ' ' . json.copyright.provider[0].link)
  call s:out('')
  setl nomodifiable

  let s:locations = json.pinpointLocations
endfunction

function! s:open_win()
  if !exists('b:weather_win')
    new
    silent edit weather
    setl bt=nofile noswf wrap hidden nolist nomodifiable ft=weather
    nnoremap <buffer><Plug>(weather-click) :<C-u>call weather#click()<CR>
    nnoremap <buffer><Plug>(weather-back) :<C-u>call weather#back()<CR>
    nmap <buffer><CR> <Plug>(weather-click)
    nmap <buffer><BS> <Plug>(weather-back)
    let b:weather_win = 0
    let b:cline = [0, 0]
  endif
endfunction

function! weather#click()
  let word = expand('<cWORD>')
  let b:cline[b:weather_win] = line('.')
  if b:weather_win == s:WIN_CITY
    if word == s:toAll
      call weather#all()
    endif
  elseif b:weather_win == s:WIN_ALL
    let location = filter(copy(g:weather#city_list), 'v:val.name == word')
    if len(location) > 0
      call weather#city(location[0].id)
    endif
  endif
endfunction

function! weather#back()
  call weather#all()
endfunction

