API_HOST = process.env.API_HOST
teacher =
  getList :(locale='zh-tw') ->
    list = {}
    data = 
      "locale":locale
    $.ajax
      async:false
      # headers: 
      #   'Accept': 'application/json'
      #   'Content-Type': 'application/json'
      type:'POST'
      url:API_HOST+"teacher/list"
      dataType:'json'
      data:JSON.stringify(data)
    .done((result)->
      list = result
      )
    list 

module.exports = teacher