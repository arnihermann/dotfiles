# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

ssh-ami() {
    usage="Usage <staging|production> SERVER_TYPE"
    cloud=${1:?$usage}
    server_type=${2:?$usage}

    servers=`admin $cloud ls -a | grep $server_type/`
    echo "Servers:"
    echo "- $servers"
    echo

    chosen_server=`echo $servers | tail -n1 | awk '{print \$4}'`
    echo "Logging into $chosen_server..."
    ssh ubuntu@$chosen_server
}
