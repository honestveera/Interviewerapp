# $ ->
#     $('#candidateprofile_candidatename').change ->
#       candidate = $(this).val()
#       $.ajax
#         type: 'GET'
#         url: '/candidatedetails/search'
#         dataType: 'json'
#         data: 'candidatename': candidate
#         success: (result) ->
#            json=JSON.stringify(result)
#            alert(json)
#            return
#         error: ->
#           alert 'Error!'
#           return
#      return
