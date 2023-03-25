CREATE OR REPLACE FUNCTION chunk_pgplsql_lib.instr(str text, sub text, startpos int = 1, occurrence int = 1)
RETURNS INT LANGUAGE PLPGSQL IMMUTABLE
AS $$
DECLARE
    tail text;
    shift int;
    pos int;
    i int;
BEGIN
    shift:= 0;
    IF startpos = 0 or occurrence <= 0 then
        return 0;
    END IF;
    IF startpos < 0 then
        str:= REVERSE(str);
        sub:= REVERSE(sub);
        pos:= -startpos;
    ELSE
        pos:= startpos;
    END IF;
    FOR i IN 1..occurrence LOOP
        shift:= shift+ pos;
        tail:= SUBSTR(str, shift);
        pos:= STRPOS(tail, sub);
        IF pos = 0 then
            RETURN 0;
        END IF;
    END LOOP;
    IF startpos > 0 THEN
        RETURN pos+ shift- 1;
    ELSE
        RETURN LENGTH(str)- LENGTH(sub)- pos- shift+ 3;
    END IF;
END $$
;