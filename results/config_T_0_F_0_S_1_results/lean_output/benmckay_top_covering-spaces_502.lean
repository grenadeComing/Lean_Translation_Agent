import Mathlib

/-
We state the classical theorem: for a domain Z ⊂ ℂ and a complex-analytic g : Z → ℂ,
there exists a complex-analytic logarithm G with g = exp ∘ G iff
(1) g never vanishes on Z, and
(2) g sends every loop in Z to a null-homotopic loop in ℂ \\ {0}.

We keep the predicates `IsHolomorphicOn` and `trivial_on_loops` abstract here
(in Mathlib these would be the usual holomorphic / null-homotopy predicates).
-/

variable {IsHolomorphicOn : ∀ {Z : Set ℂ}, (↥Z → ℂ) → Prop}
variable {trivial_on_loops : ∀ {Z : Set ℂ}, (↥Z → ℂ) → Prop}

theorem exists_holomorphic_log_iff {Z : Set ℂ} (hZ_open : IsOpen Z) (hZ_conn : IsConnected Z)
  {g : ↥Z → ℂ} (hg : IsHolomorphicOn (g : ↥Z → ℂ)) :
  (∃ G : ↥Z → ℂ, IsHolomorphicOn (G : ↥Z → ℂ) ∧ ∀ z : ↥Z, g z = Complex.exp (G z)) ↔
    (∀ z : ↥Z, g z ≠ 0) ∧ trivial_on_loops (g : ↥Z → ℂ) := by sorry
