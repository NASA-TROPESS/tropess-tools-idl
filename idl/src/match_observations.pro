pro match_observations
    opts = obj_new('mg_options', app_name='match_observations', version='1.0')

    ; setup options
    opts->addOption, 'products', 'p', $
                    help='comma separated list of products', $
                    default='CO,O3', $
                    metavar='CO,O3'

    ; parse the options
    opts->parseArgs, error_message=errorMsg
    if (errorMsg ne '') then begin
        message, errorMsg, /informational, /noname
        exit, status=1
    end

    if (opts->get('help') || opts->get('version')) then begin
        exit, status=0
    endif

    ; main logic
    print, 'products=', opts->get('products')
    print, 'TODO:'

    obj_destroy, opts
end    