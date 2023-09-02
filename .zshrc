# Configuração do Ruby e Ruby on Rails
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# Configuração do Docker
export DOCKER_TLS_VERIFY="1"
export COMPOSE_TLS_VERSION="TLSv1.2"
export DOCKER_CERT_PATH="$HOME/.docker/certs"
export DOCKER_HOST="tcp://localhost:2376"

# Alias úteis para Docker
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias dlogs='docker-compose logs'
alias drun='docker-compose run --rm'
alias dup='docker-compose up -d'

# Comando para parar todos os containers Docker
alias dstopall='docker stop $(docker ps -a -q)'

# Aliases para comandos Ruby on Rails
alias rc='rails console'
alias rs='rails server'
alias rg='rails generate'
alias rd='rails destroy'
alias rr='rails routes'
alias rt='rails test'
alias rgm='rails generate migration'
alias rgs='rails generate scaffold'
alias rgsj='rails generate scaffold_json'
alias rdm='rails db:migrate'
alias rds='rails db:seed'
alias rdc='rails db:console'
alias rdp='rails db:rollback'
alias rdd='rails db:drop'
alias rdu='rails db:setup'
alias rdsu='rails db:seeds'
alias be='bundle exec'
alias rdoc='rails db:rollback'
alias rsg='rails db:schema:generate'
alias rrp='rails routes | grep'

# Aliases para rake
alias rk='rake'
alias rkc='rake db:create'
alias rks='rake db:schema:load'
alias rkt='rake db:test:prepare'
alias rkr='rake routes'
alias rkd='rake db:drop'
alias rkm='rake db:migrate'
alias rksu='rake db:seed:users' # Exemplo personalizado para seeding de usuários

# Aliases para Python e Django
alias py='python'
alias py3='python3'
alias djr='python manage.py runserver'
alias djm='python manage.py makemigrations'
alias djsm='python manage.py migrate'
alias djc='python manage.py createsuperuser'
alias djsh='python manage.py shell'

# Aliases para Go
alias g='go'
alias gb='go build'
alias gd='go doc'
alias gg='go get'
alias gi='go install'
alias gl='go list'
alias gt='go test'
alias gr='go run'

# Configuração de cores do prompt
autoload -U colors && colors
PS1='%F{blue}%n%f@%F{green}%m%f:%F{cyan}%~%f %F{yellow}%#%f '

# Atualizar prompt após cada comando
precmd() { RPROMPT="" }

# Comando para limpar o console
alias cls='clear'

# Inicializar rbenv ao abrir um terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Ativar o ambiente virtual do Docker (caso esteja usando)
if [ -f .env ]; then
  set -a
  source .env
  set +a
fi
