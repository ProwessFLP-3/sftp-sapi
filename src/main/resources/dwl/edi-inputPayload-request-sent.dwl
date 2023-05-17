%dw 2.0
output application/json
---
{
    correlationId : vars.correlationId,
    businessProcessName: Mule::p('logger.businessProcessName'),
    flowName: flow.name,  
    source: Mule::p('logger.blumeTarget'),
    target: Mule::p('logger.blumeFileWrite'),
    httpMethod: vars.inputPayload.httpMethod,
    message: "Writing file in bloom sftp location.",
    businessObject: []
}