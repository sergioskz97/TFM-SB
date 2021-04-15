xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../Resources/dataTypes.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/DBReference";
(:: import schema at "../Business/DBReference_table.xsd" ::)

declare variable $xq_in as element() (:: schema-element(ns1:Request) ::) external;

declare function local:func($xq_in as element() (:: schema-element(ns1:Request) ::)) as element() (:: schema-element(ns2:DBReferenceSelect_titulacion_curso_dni_sexoInputParameters) ::) {
    <ns2:DBReferenceSelect_titulacion_curso_dni_sexoInputParameters>
        <ns2:titulacion>{fn:data($xq_in/ns1:titulacion)}</ns2:titulacion>
        <ns2:curso>{fn:data($xq_in/ns1:curso)}</ns2:curso>
        <ns2:dni>{fn:data($xq_in/ns1:dni)}</ns2:dni>
        <ns2:sexo>{fn:data($xq_in/ns1:sexo)}</ns2:sexo>
    </ns2:DBReferenceSelect_titulacion_curso_dni_sexoInputParameters>
};

local:func($xq_in)
