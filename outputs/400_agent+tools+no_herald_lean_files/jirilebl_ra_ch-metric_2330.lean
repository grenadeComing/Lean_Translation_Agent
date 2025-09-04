import Mathlib

/-!
Let (X,d) be a metric space. Suppose K ⊂ X is compact. Prove that there exists a finite ε-net for K, for every ε > 0.
-/

open Metric Set

theorem exists_finite_epsilon_net {X : Type*} [PseudoMetricSpace X] {K : Set X} (hK : IsCompact K)
  (ε : ℝ) (hε : 0 < ε) :
  ∃ S : Finset X, K ⊆ ⋃ x ∈ (↑S : Set X), Metric.ball x ε := by
  sorry
