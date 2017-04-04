function Y = byte_sub(S,sentido)
%saida em decimal

%criando a tabela S-box
a = ['63' '7C' '77' '7B' 'F2' '6B' '6F' 'C5' '30' '01' '67' '2B' 'FE' 'D7' 'AB' '76';
     'CA' '82' 'C9' '7D' 'FA' '59' '47' 'F0' 'AD' 'D4' 'A2' 'AF' '9C' 'A4' '72' 'C0';
     'B7' 'FD' '93' '26' '36' '3F' 'F7' 'CC' '34' 'A5' 'E5' 'F1' '71' 'D8' '31' '15';
     '04' 'C7' '23' 'C3' '18' '96' '05' '9A' '07' '12' '80' 'E2' 'EB' '27' 'B2' '75';
     '09' '83' '2C' '1A' '1B' '6E' '5A' 'A0' '52' '3B' 'D6' 'B3' '29' 'E3' '2F' '84';
     '53' 'D1' 'C0' 'ED' '20' 'FC' 'B1' '5B' '6A' 'CB' 'BE' '39' '4A' '4C' '58' 'CF';
     'D0' 'EF' 'AA' 'FB' '43' '4D' '33' '85' '45' 'F9' '02' '7F' '50' '3C' '9F' 'A8';
     '51' 'A3' '40' '8F' '92' '9D' '38' 'F5' 'BC' 'B6' 'DA' '21' '10' 'FF' 'F3' 'D2';
     'CD' '0C' '13' 'EC' '5F' '97' '44' '17' 'C4' 'A7' '7E' '3D' '64' '5D' '19' '73';
     '60' '81' '4F' 'DC' '22' '2A' '90' '88' '46' 'EE' 'B8' '14' 'DE' '59' '0B' 'DB';
     'E0' '32' '3A' '0A' '49' '06' '24' '5C' 'C2' 'D3' 'AC' '62' '91' '95' 'E4' '79';
     'E7' 'C8' '37' '6D' '8D' 'D5' '4E' 'A9' '6C' '56' 'F4' 'EA' '65' '7A' 'AE' '08';
     'BA' '78' '25' '2E' '1C' 'A6' 'B4' 'C6' 'E8' 'DD' '74' '1F' '4B' 'BD' '8B' '8A';
     '70' '3E' 'B5' '66' '48' '03' 'F6' '0E' '61' '35' '57' 'B9' '86' 'C1' '1D' '9E';
     'E1' 'F8' '98' '11' '69' 'D9' '8E' '94' '9B' '1E' '87' 'E9' 'CE' '55' '28' 'DF';
     '8C' 'A1' '89' '0D' 'BF' 'E6' '42' '68' '41' '99' '2D' '0F' 'B0' '54' 'BB' '16'];
     
b = ['52096AD53036A538BF40A39E81F3D7FB';
     '7CE339829B2FFF87348E4344C4DEE9CB';
     '547B9432A6C2233DEE4C950B42FAC34E';
     '082EA16628D924B2765BA2496D8BD125';
     '72F8F66486689816D4A45CCC5D65B692';
     '6C704850FDEDB9DA5E9D4657A78D9D84';
     '90D8AB008CBCD30AF7E45805B8B34506';
     'D02C1E8FCA3F0F02C1AFBD0301138A6B';
     '3A9111414F67DCEA97F2CFCEF0B4E673';
     '96AC7422E7AD3585E2F937E81C75DF6E';
     '47F11A711D29C5896FB7620EAA18BE1B';
     'FC563E4BC6D279209ADBC0FE78CD5AF4';
     '52DDA8338807C731B11210592780EC5F';
     '60517FA919B54A0D2DE57A9F93C99CEF';
     'A0E03B4DAE2AF5B0C8EBBB3C83539961';
     '172B047EBA77D626E169146355210C7D'];

%Abaixo pega o indice a partir da string, e obtem um vetor Y com os valores trocados a partir da tabela.

if (sentido ==0)
  a = b;
end

  Y = pega_tabela(S,a);
