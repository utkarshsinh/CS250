set( SERVICE_ID "00048" )
set( AUTHOR_ID "CROMU" )
add_compile_options( -O0 -g -mstack-alignment=3 )
set( VULN_COUNT "1" )
buildCB()
buildSO()
