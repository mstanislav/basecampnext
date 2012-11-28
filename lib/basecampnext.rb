require 'yaml'
require 'httparty'
require 'json'

class BasecampNext

  def initialize(username = nil, password = nil, account = nil, api = nil)
    @username = username || BASECAMPNEXT_CONFIG['username']
    @password = password || BASECAMPNEXT_CONFIG['password']
    @account = account || BASECAMPNEXT_CONFIG['account']
    @api = api || BASECAMPNEXT_CONFIG['api']

    return false if @username.blank? or @password.blank? or @account.blank? or @api.blank?

    @endpoint = "https://basecamp.com/#{@account}/api/v#{@api}"
    @params = { :basic_auth => { :username => @username, :password => @password }, :headers => { 'User-Agent' => @username } }
  end

  def project(project_id)
    request "projects/#{project_id}.json"
  end

  def projects
    request "projects.json"
  end

  def todo(project_id, todo_id)
    request "projects/#{project_id}/todos/#{todo_id}.json"
  end

  def todolists
    request "todolists.json"
  end

  def todolists(project_id)
    request "projects/#{project_id}/todolists.json"
  end

  def todolist(project_id, todolist_id)
    request "projects/#{project_id}/todolists/#{todolist_id}.json"
  end

private
  def request(path)
    handle HTTParty.get "#{@endpoint}/#{path}", @params
  end

  def handle(response)
    if response.code == 200
      JSON.parse(response.body)
    else
      raise Exception, response
    end
  end

end
