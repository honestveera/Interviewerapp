$ ->
  $('#candidateprofile_candidatename').change ->
    q = $(this).val()
    $.ajax
      type: 'GET'
      url: '/candidatedetails/search'
      dataType: 'json'
      data: 'id': q
      success: (result) ->
        json = JSON.stringify(result)
        parse = $.parseJSON(json)
        alert(json);
        $('#candidateprofile_candidateemail').val parse[0]['candidateemail']
        contact = parseFloat(parse[0]['candidatecontact'])
        $('#candidateprofile_candidatecontact').val contact
        $('#candidateprofile_skills').val parse[0]['skills']
        $('#textarea').val parse[0]['yoe']
        return
      error: ->
        alert 'Error!'
        return
     return
  $('#candidateprofile_interviewername').change ->
      name = $(this).val()
      $.ajax
        type: 'GET'
        url: '/interviewers/search'
        dataType: 'json'
        data: 'id': name
        success: (result) ->
          json = JSON.stringify(result)
          parse = $.parseJSON(json)
          alert json
          $("#candidateprofile_intervieweremail").val parse[0]['companyemail']
          return
        error: ->
          alert 'Error!'
          return
       return
# ---
# generated by js2coffee 2.2.0
