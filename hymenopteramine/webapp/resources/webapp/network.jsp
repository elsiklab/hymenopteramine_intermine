<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<%@ taglib uri="/WEB-INF/functions.tld" prefix="imf" %>
  
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {}

        .icon-bar {
            width: 50%;
            background-color: grey;
            float: right;
            overflow: auto;
        }

        .icon-bar a {
            float: right;
            width: 50%;
            text-align: center;
            padding: 2px 0;
            color: white;
            font-size: 13px;
        }

        .icon-bar a:hover {
            background-color: #000;
        }

        .active {
            background-color: #000 !important;
        }
    </style>
    <body>

    <div class="icon-bar">
        <a id="identifier_map" href="model/images/IdentifierRelationshipTable.png" target="_blank">Identifier Relationship Table</a>
        <a id="gene_alias_map" href="model/images/Gene-AliasDataSourceTable.png" target="_blank">Gene/Alias Data Source Table</a>
    </div>

      <object id="data_model" data="model/images/hymenopteramine_model.png" style="width:100%"></object>

    </body>
</html>
