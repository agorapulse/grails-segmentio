<%@ page import="grails.converters.JSON" %>
<r:script disposition="head">
    var analytics=analytics||[];analytics.load=function(e){var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src=("https:"===document.location.protocol?"https://":"http://")+"d2dq2ahtl5zl1z.cloudfront.net/analytics.js/v1/"+e+"/analytics.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(t,n);var r=function(e){return function(){analytics.push([e].concat(Array.prototype.slice.call(arguments,0)))}},i=["identify","track","trackLink","trackForm","trackClick","trackSubmit","pageview","ab","alias","ready","group"];for(var s=0;s<i.length;s++)analytics[i[s]]=r(i[s])};
    analytics.load("${apiKey}");
    <g:if test="${providers}">analytics.initialize(${providers as JSON});</g:if>
</r:script>