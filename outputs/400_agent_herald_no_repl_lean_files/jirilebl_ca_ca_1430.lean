import Mathlib

open Set
open TopologicalSpace

/--
A definition of "limit at infinity in the sense of the Riemann sphere":
for every open neighbourhood U of L in C there exists M such that |z|>M implies f(z) ∈ U.
-/
def has_limit_at_infty_riemann (f : Complex → Complex) (L : Complex) : Prop :=
  ∀ U : Set Complex, IsOpen U → L ∈ U → ∃ M : ℝ, ∀ z : Complex, M < Complex.abs z → f z ∈ U

/--
Equivalence between the topological (Riemann-sphere) notion of limit at infinity and the
epsilon characterisation: for every ε>0 there exists M such that |f(z)-L|<ε whenever |z|>M.
-/
theorem has_limit_at_infty_riemann_iff_epsilon {f : Complex → Complex} {L : Complex} :
  has_limit_at_infty_riemann f L ↔
    (∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : Complex, M < Complex.abs z → Complex.abs (f z - L) < ε) := by sorry
