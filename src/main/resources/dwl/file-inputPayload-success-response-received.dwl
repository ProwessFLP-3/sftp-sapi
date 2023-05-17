%dw 2.0
output application/json
---
{
    correlationId : vars.inputPayload.correlationId,
    businessProcessName: Mule::p('logger.businessProcessName'),
    flowName: flow.name,  
    source: Mule::p('logger.target'),
    target: Mule::p('logger.source'),
    httpMethod: vars.inputPayload.httpMethod,
    message: "Processed the csv file successfully",
    businessObject: []
}