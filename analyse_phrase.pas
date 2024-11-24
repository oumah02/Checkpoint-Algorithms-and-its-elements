PROCEDURE analyse_phrase()
VAR
    longueur, mots, voyelles: INTEGER;
    c, precedent: CHAR;
BEGIN
    longueur := 0;
    mots := 0;
    voyelles := 0;
    precedent := ' ';
    REPEAT
        READ(c);
        longueur := longueur + 1;
        IF (c IN ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']) THEN
            voyelles := voyelles + 1;
        END_IF
        IF (c = ' ') AND (precedent <> ' ') THEN
            mots := mots + 1;
        END_IF
        precedent := c;
    UNTIL c = '.';
    IF precedent <> ' ' THEN
        mots := mots + 1;
    END_IF
    WRITE('Longueur: ', longueur);
    WRITE('Mots: ', mots);
    WRITE('Voyelles: ', voyelles);
END
