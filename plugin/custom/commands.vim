" Open vim commands such as nmap options in new tab
command -nargs=1 Vcmd :tabnew|pu=execute('<args>')
