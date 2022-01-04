/^>/{
  if(sign_val && strLen>=50){
    print sign_val ORS line
  }
  strLen=line=""
  sign_val=$0
  next
}
{
  strLen+=length($0)
  line=(line?line ORS:"")$0
}
END{
  if(sign_val && strLen>=50){
    print sign_val ORS line
  }
}

