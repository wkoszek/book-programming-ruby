# Sample code from Programing Ruby, page 311
"a01b23c45 d56".scan(/[a-z]\d+/)
"a01b23c45 d56".scan(/\G[a-z]\d+/)
"a01b23c45 d56".scan(/\A[a-z]\d+/)
