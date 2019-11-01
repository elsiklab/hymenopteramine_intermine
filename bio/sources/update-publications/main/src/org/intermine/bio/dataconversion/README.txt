The version of EntrezPublicationsRetriever.java in this folder is from the Intermine v2.1.0 release
with a small patch added from the v3.1.2 release.

The v2.1.0 patch fixes the "URL too long" error that we experienced with loading HymenopteraMine.

The v3.1.2 patch truncates publication summaries that are too long to fit into the database. While
we haven't run into this issue yet, it seems like we could in the future and this is a really small
patch that is unlikely to affect any other part of Intermine.

----------------------------------------------------------------------------------------------------

Links:

Version 2.1.0 file with "URL too long" patch:  https://github.com/intermine/intermine/blob/intermine-2.1.0/bio/sources/update-publications/src/main/java/org/intermine/bio/dataconversion/EntrezPublicationsRetriever.java

Discussion of "URL too long" issue:  https://github.com/intermine/intermine/pull/1892

Discussion of "abstract too long" issue:  https://github.com/intermine/intermine/issues/2009
