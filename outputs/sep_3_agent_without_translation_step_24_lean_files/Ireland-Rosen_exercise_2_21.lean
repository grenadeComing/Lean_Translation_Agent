import Mathlib

open scoped ArithmeticFunction

/-- Exercise 2.21 (Ireland & Rosen): Define the von Mangoldt function Λ by
    Λ(n) = log p if n is a power of a prime p, and Λ(n) = 0 otherwise.
    Then show that the Dirichlet convolution of the Möbius function μ with log
    equals Λ, i.e. for all n,
      ∑_{d ∣ n} μ(n / d) * log d = Λ(n).

    We state the equality of arithmetic functions. -/
theorem ireland_rosen_exercise_2_21 : μ * log = Λ := by sorry
