pro match_observations
    args = command_line_args(count=arg_count)
    if (arg_count gt 0) then begin
        a = strsplit(args[0], '=', /EXTRACT)
        products = a[1]
        print, 'products: ', products        
    endif else begin
        print, 'Usage: '
        print, 'gdl -e match_observations -args \'
        print, '    --products=<comma separated list of products>'
        print
        print, 'Example:'
        print, 'Match the observations for CO, O3 and PAN products: '
        print, 'gdl -e match_observations -args \'
        print, '    --products=CO,O3,PAN'
        exit, status=1
    endelse

    print, 'TODO:'
end    