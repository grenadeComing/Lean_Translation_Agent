import Mathlib

theorem jirilebl_ca_ca_13540 {U : Set ℂ} (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ (Set.interior (K (n+1)))) ∧
    (U = Set.Union fun n => Set.interior (K n)) ∧
    (∀ n, ∃ s : Finset (ℂ × ℝ),
       K n ⊆ s.biUnion fun p => Metric.closedBall (p.1) (p.2) ∧
       s.biUnion fun p => Metric.closedBall (p.1) (p.2) ⊆ Set.interior (K (n+1))) := by sorry
