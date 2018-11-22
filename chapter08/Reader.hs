class Functor' f where
    fmap' :: (a -> b) -> f a -> f b

type Reader r a = r -> a
instance Functor' (Reader r) where
    -- fmap :: (a -> b) -> (r -> a) -> (r -> b)
    fmap f rx = f . rx -- \x -> f (rx x)