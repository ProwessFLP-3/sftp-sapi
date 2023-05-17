%dw 2.0
output application/json
---
{
    correlationId : uuid(),
    businessProcessName: Mule::p('logger.businessProcessName'),
    flowName: flow.name,  
    source: Mule::p('logger.source'),
    target: Mule::p('logger.target'),
    httpMethod: attributes.method,
    message: "Request for delivery order received.",
    businessObject: []
}