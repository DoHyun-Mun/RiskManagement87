using { sap.ui.riskmanagement as my /* my is namespace alias name .*/} from '../db/schema'; 
 
@path: 'service/risk'
service RiskService {
entity Risks @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'RiskViewer87' ]
            },
            {
                grant : [ '*' ],
                to : [ 'RiskManager87' ]
            }
        ]) as projection on my.Risks;
//### END OF INSERT
    annotate Risks with @odata.draft.enabled;
 
//### BEGIN OF INSERT
  entity Mitigations @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'RiskViewer87' ]
            },
            {
                grant : [ '*' ],
                to : [ 'RiskManager87' ]
            }
        ]) as projection on my.Mitigations;
//### END OF INSERT
  //entity BusinessPartners as projection on my.BusinessPartners;

  
}