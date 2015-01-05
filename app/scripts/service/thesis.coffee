
API_HOST = process.env.API_HOST
thesis =
  getList :(thesisType='thesis') ->
    list = {}
    data = 
      "type": thesisType
    $.ajax
      async:false
      # headers: 
      #   'Accept': 'application/json'
      #   'Content-Type': 'application/json'
      type:'POST'
      url:API_HOST+"thesis/list"
      dataType:'json'
      data:JSON.stringify(data)
    .done((result)->
      list = result
      )
    list 

  getThesisListbyYear :(year)->
    year = parseInt year
    ori_list = @getList('thesis')
    console.log ori_list
    list = list.map((val,idx)->
      yearArr.push(val.year)
    )
    yearArr = _.uniq(yearArr)
    list =_.where(ori_list,{"year":year})
    list





module.exports = thesis