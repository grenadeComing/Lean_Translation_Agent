import Mathlib

/-- The countable product of the closed unit interval as a Pi of subtypes. -/
def Icc01 (n : ℕ) : Type := { x : ℝ // 0 ≤ x ∧ x ≤ 1 }

/-- [0,1]^ω with a uniform structure is not locally compact. -/
theorem not_locally_compact_Icc_pi [UniformSpace (∀ n, Icc01 n)] :
  ¬ LocallyCompactSpace (∀ n, Icc01 n) := by
  -- proof omitted
  sorry
