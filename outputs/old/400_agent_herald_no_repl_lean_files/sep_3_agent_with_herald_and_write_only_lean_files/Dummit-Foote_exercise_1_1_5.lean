import Mathlib


/-- Prove that for all $n>1$ that $\mathbb{Z}/n\mathbb{Z}$ is not a group under multiplication of residue classes. -/
theorem not_isGroup_ZMod_multiplication (n : ℕ) (hn : 1 < n) : ¬IsGroup (ZMod n) := by sorry
