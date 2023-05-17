%dw 2.0
output application/json
---
{
    correlationId : vars.correlationId,
    businessProcessName: Mule::p('logger.businessProcessName'),
    flowName: flow.name,  
    source: Mule::p('logger.blumesource'),
    target: Mule::p('logger.blumetarget'),
    httpMethod: attributes.method,
    message: "Request to write edi file received.",
    businessObject: []
}