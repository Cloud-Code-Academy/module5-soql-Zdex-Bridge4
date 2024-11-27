// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

sfdx force:source:deploy -x C:\Users\zdextraz\Salesforce_Development_101\module5-soql-Zdex-Bridge4\force-app\main\default\objects\Opportunity\fields\Primary_Contact__c.field-meta.xml

public static List<Account> findAccountsByLeadEmailDomains(Set<Id> leadIds) {
    // Query the Leads
    List<lead> leadsFromleadIds= [SELECT Id, Email, Name FROM Lead WHERE Id IN :leadIds];
    // Create a set of email domains from the Leads
    Set<String> emailDomainsFromLeads = new Set<String>();
    // Loop through each Lead
        // Get the email from the Lead

        // Check if the email is not null

            // Add the email domain to the set
    for(Lead lead : leadsFromleadIds){
        if(lead.Email != null && lead.Email.contains('@')){
            String emailDomain = lead.Email.substringAfter('@');
            emailDomainsFromLeads.add(emailDomain);            
        }
        System.debug(emailDomainsFromLeads);
    }
}