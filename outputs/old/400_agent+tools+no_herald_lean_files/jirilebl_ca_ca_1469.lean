import Mathlib

open Complex

variable {f : Complex → Complex} {L : Complex}

/-- Definition of limit at infinity (Riemann sphere sense) via neighbourhoods: for every
    neighborhood U of L there exists M such that |z|>M implies f z ∈ U. -/
def tendsto_in_riemann_at_infty (f : Complex → Complex) (L : Complex) : Prop :=
  ∀ U : Set Complex, IsOpen U → L ∈ U → ∃ M : ℝ, ∀ z : Complex, Complex.abs z > M → f z ∈ U

/-- Equivalence between the topological (Riemann-sphere) definition of limit at infinity
    and the epsilon definition for complex-valued functions. -/
theorem limit_at_infty_riemann_iff_epsilon (f : Complex → Complex) (L : Complex) :
  tendsto_in_riemann_at_infty f L ↔ (∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : Complex, Complex.abs z > M → Complex.abs (f z - L) < ε) := by
  sorry
