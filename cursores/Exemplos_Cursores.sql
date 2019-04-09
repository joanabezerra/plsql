select * from loc_banco
select * from loc_ddd
set serveroutput on

declare
  v_registro loc_banco%rowtype;
begin
  select cd_banco, nm_banco --, url
    into v_registro.cd_banco,
      v_registro.nm_banco
    from loc_banco
  where cd_banco = 341;
  dbms_output.put_line(v_registro.cd_banco || ' ' || v_registro.nm_banco || ' ' || v_registro.url);
end;

-- Exercício: Retornar o nome da cidade

declare
  v_registro loc_ddd%rowtype;
begin
  select cd_ddd, seq_ddd, cidade_ddd
    into v_registro.cd_ddd,
      v_registro.seq_ddd, v_registro.cidade_ddd
    from loc_ddd
  where cd_ddd = 18 and seq_ddd = 391;
  dbms_output.put_line(v_registro.cidade_ddd);
end;