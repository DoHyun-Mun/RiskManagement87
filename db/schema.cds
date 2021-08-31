namespace sap.ui.riskmanagement;
using { managed } from '@sap/cds/common';
 
  entity Risks : managed {
    key ID      : UUID  @(Core.Computed : true);
    title       : String(100);
    owner       : String;
    prio        : String(5);
    descr       : String;
    miti_id     : UUID;
    miti        : Association to Mitigations
                    on miti.ID = miti_id;
    impact      : Integer;
    criticality : Integer;
 
  }
 
  entity Mitigations : managed {
    key ID       : UUID  @(Core.Computed : true);
    description  : String;
    owner        : String;
    timeline     : String;
    risks        : Association to many Risks on risks.miti_id= ID;
  }