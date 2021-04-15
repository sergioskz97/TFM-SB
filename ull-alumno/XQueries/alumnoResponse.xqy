xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../Resources/dataTypes.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/DBReference";
(:: import schema at "../Business/DBReference_table.xsd" ::)

declare variable $xq_out as element() (:: schema-element(ns2:EgresadosCollection) ::) external;

declare function local:func($xq_out as element() (:: schema-element(ns2:EgresadosCollection) ::)) as element() (:: element(*, ns1:Egresados) ::) {
    <ns1:Egresados>
        {
            if ($xq_out/ns2:Egresados/ns2:cursoacadRef)
            then <ns1:cursoacadRef>{fn:data($xq_out/ns2:Egresados/ns2:cursoacadRef)}</ns1:cursoacadRef>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:tipoDocIdentidad)
            then <ns1:tipoDocIdentidad>{fn:data($xq_out/ns2:Egresados/ns2:tipoDocIdentidad)}</ns1:tipoDocIdentidad>
            else ()
        }
        <ns1:numeroDocumento>{fn:data($xq_out/ns2:Egresados/ns2:numeroDocumento)}</ns1:numeroDocumento>
        <ns1:letraDocumento>{fn:data($xq_out/ns2:Egresados/ns2:letraDocumento)}</ns1:letraDocumento>
        {
            if ($xq_out/ns2:Egresados/ns2:apellido1)
            then <ns1:apellido1>{fn:data($xq_out/ns2:Egresados/ns2:apellido1)}</ns1:apellido1>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:apellido2)
            then <ns1:apellido2>{fn:data($xq_out/ns2:Egresados/ns2:apellido2)}</ns1:apellido2>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:nombre)
            then <ns1:nombre>{fn:data($xq_out/ns2:Egresados/ns2:nombre)}</ns1:nombre>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:sexo)
            then <ns1:sexo>{fn:data($xq_out/ns2:Egresados/ns2:sexo)}</ns1:sexo>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:nacionalidad)
            then <ns1:nacionalidad>{fn:data($xq_out/ns2:Egresados/ns2:nacionalidad)}</ns1:nacionalidad>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:paisNacimiento)
            then <ns1:paisNacimiento>{fn:data($xq_out/ns2:Egresados/ns2:paisNacimiento)}</ns1:paisNacimiento>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:fechaNacimiento)
            then <ns1:fechaNacimiento>{fn:data($xq_out/ns2:Egresados/ns2:fechaNacimiento)}</ns1:fechaNacimiento>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:universidad)
            then <ns1:universidad>{fn:data($xq_out/ns2:Egresados/ns2:universidad)}</ns1:universidad>
            else ()
        }
        <ns1:codTitulacion>{fn:data($xq_out/ns2:Egresados/ns2:codTitulacion)}</ns1:codTitulacion>
        {
            if ($xq_out/ns2:Egresados/ns2:fechaccesosue)
            then <ns1:fechaccesosue>{fn:data($xq_out/ns2:Egresados/ns2:fechaccesosue)}</ns1:fechaccesosue>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:fechaccesoest)
            then <ns1:fechaccesoest>{fn:data($xq_out/ns2:Egresados/ns2:fechaccesoest)}</ns1:fechaccesoest>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:modaccesoest)
            then <ns1:modaccesoest>{fn:data($xq_out/ns2:Egresados/ns2:modaccesoest)}</ns1:modaccesoest>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:notaingresoest)
            then <ns1:notaingresoest>{fn:data($xq_out/ns2:Egresados/ns2:notaingresoest)}</ns1:notaingresoest>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:fechaegreso)
            then <ns1:fechaegreso>{fn:data($xq_out/ns2:Egresados/ns2:fechaegreso)}</ns1:fechaegreso>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:notaegresoest4)
            then <ns1:notaegresoest4>{fn:data($xq_out/ns2:Egresados/ns2:notaegresoest4)}</ns1:notaegresoest4>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:notaegresoest10)
            then <ns1:notaegresoest10>{fn:data($xq_out/ns2:Egresados/ns2:notaegresoest10)}</ns1:notaegresoest10>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:estupadre)
            then <ns1:estupadre>{fn:data($xq_out/ns2:Egresados/ns2:estupadre)}</ns1:estupadre>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:estumadre)
            then <ns1:estumadre>{fn:data($xq_out/ns2:Egresados/ns2:estumadre)}</ns1:estumadre>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:ocupadre)
            then <ns1:ocupadre>{fn:data($xq_out/ns2:Egresados/ns2:ocupadre)}</ns1:ocupadre>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:ocumadre)
            then <ns1:ocumadre>{fn:data($xq_out/ns2:Egresados/ns2:ocumadre)}</ns1:ocumadre>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:trabajoalum)
            then <ns1:trabajoalum>{fn:data($xq_out/ns2:Egresados/ns2:trabajoalum)}</ns1:trabajoalum>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:munifam)
            then <ns1:munifam>{fn:data($xq_out/ns2:Egresados/ns2:munifam)}</ns1:munifam>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:codpostfam)
            then <ns1:codpostfam>{fn:data($xq_out/ns2:Egresados/ns2:codpostfam)}</ns1:codpostfam>
            else ()
        }
        {
            if ($xq_out/ns2:Egresados/ns2:paisfam)
            then <ns1:paisfam>{fn:data($xq_out/ns2:Egresados/ns2:paisfam)}</ns1:paisfam>
            else ()
        }
    </ns1:Egresados>
};

local:func($xq_out)
