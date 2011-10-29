import builtins;

data List a = Nil | Cons a (List a);

rev : List a -> List a;
rev xs = revAcc Nil xs
  where {
    revAcc : List a -> List a -> List a;
    revAcc acc Nil = acc;
    revAcc acc (Cons x xs) = revAcc (Cons x acc) xs;
  }

length : List a -> Int;
length Nil         = 0;
length (Cons x xs) = 1 + length xs;

take : Int -> List a -> List a;
take 0 xs = Nil;
take n Nil = Nil;
take n (Cons x xs) = Cons x (take (n-1) xs);

drop : Int -> List a -> List a;
drop 0 xs = xs;
drop n Nil = Nil;
drop n (Cons x xs) = drop (n-1) xs;
