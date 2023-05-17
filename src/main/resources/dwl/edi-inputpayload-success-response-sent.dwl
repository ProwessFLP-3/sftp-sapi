%dw 2.0
output application/json
---
{
    correlationId : vars.correlationId,
    businessProcessName: Mule::p('logger.businessProcessName'),
    flowName: flow.name,  
    source: Mule::p('logger.blumetarget'),
    target: Mule::p('logger.blumesource'),
    httpMethod: vars.inputPayload.httpMethod,
    message: "Sending success response to orders-papi",
    businessObject: []
}