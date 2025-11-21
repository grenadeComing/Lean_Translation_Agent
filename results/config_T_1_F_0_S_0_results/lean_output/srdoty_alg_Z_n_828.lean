import Mathlib


/-- Let n be a fixed positive integer and let a,b,c,d\in \mathbb{Z} with a \equiv b \pmod{n} and c \equiv d \pmod{n}. Prove that a+c \equiv b+d \pmod{n} and ac \equiv bd \pmod{n}. -/
theorem add_and_mul {a b c d n : ℤ} (hn : n > 0) (h1 : a ≡ b [ZMOD n]) (h2 : c ≡ d [ZMOD n]) :
  a + c ≡ b + d [ZMOD n] ∧ a * c ≡ b * d [ZMOD n] := by sorry