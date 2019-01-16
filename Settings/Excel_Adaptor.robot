*** Variable ***
${sheetName} =  Sheet1

*** Keywords ***
Get Excel Enteries
    ${my_dict} =  Create dictionary      
    Open Excel          kmart.xls
    ${rowCount} =  Get Row Count	${sheetName}
    ${columnCount} =  Get Column Count		${sheetName}
    : FOR    ${i}    IN RANGE    2    ${rowCount}
    \   ${v} =  Get Row Values 	 ${sheetName}	${i}
    \   ${key} =  Read Cell Data By Coordinates	${sheetName}  ${0}  ${i}
    \   ${value} =  Read Cell Data By Coordinates	${sheetName}  ${1}  ${i}
    \   Set To Dictionary	${my_dict}	 ${key}	${value}
    [Return]  ${my_dict}

Init Variables
        
    Set Suite Variable            ${URL}                                         ${empty}
    Set Suite Variable            ${SEARCH_QUERY}                                ${empty}  
    Set Suite Variable            ${QUANTITY}                                    ${empty}
    Set Suite Variable            ${PRODUCT_NAME}                                ${empty}
    Set Suite Variable            ${FIRST_NAME}                                  ${empty}
    Set Suite Variable            ${LAST_NAME}                                   ${empty}
    Set Suite Variable            ${EMAIL}                                       ${empty}

Convert Data From File
        Init Variables       
        ${v} =  Get Excel Enteries

        ${tmp} =  Get From Dictionary	${v}  URL
        Set Suite Variable        ${URL}  ${tmp}

        ${tmp} =  Get From Dictionary	${v}  SEARCH_QUERY
        Set Suite Variable        ${SEARCH_QUERY}  ${tmp}

        ${tmp} =  Get From Dictionary	${v}  QUANTITY
        Set Suite Variable        ${QUANTITY}  ${tmp}      
        
        ${tmp} =  Get From Dictionary	${v}  PRODUCT_NAME
        Set Suite Variable        ${PRODUCT_NAME}  ${tmp}   
           
        ${tmp} =  Get From Dictionary	${v}  PRODUCT_NAME
        Set Suite Variable        ${PRODUCT_NAME}  ${tmp} 
                
        ${tmp} =  Get From Dictionary	${v}  FIRST_NAME
        Set Suite Variable        ${FIRST_NAME}  ${tmp} 
                
        ${tmp} =  Get From Dictionary	${v}  LAST_NAME
        Set Suite Variable        ${LAST_NAME}  ${tmp} 
                
        ${tmp} =  Get From Dictionary	${v}  EMAIL
        Set Suite Variable        ${EMAIL}  ${tmp}    