import Mathlib

variable {X : Type _} [MetricSpace X]

/-- Let (X,d) be a metric space and K ⊆ X compact. Then for every ε > 0 there exists a finite ε-net for K. -/
theorem compact_has_finite_epsilon_net {K : Set X} (hK : IsCompact K) :
  ∀ ε : ℝ, 0 < ε → ∃ (S : Set X), S.Finite ∧ K ⊆ {x | ∃ y ∈ S, dist x y < ε} :=
by
  intro ε hε
  -- proof omitted
  sorry
