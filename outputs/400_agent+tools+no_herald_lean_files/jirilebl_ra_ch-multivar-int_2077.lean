import Mathlib

/-- For any type α, let mstar : Set α → ENNReal satisfy countable subadditivity. -/
theorem mstar_union_le {α : Type _} (mstar : Set α → ENNReal)
  (h_countable_subadd : ∀ (s : ℕ → Set α), mstar (⋃ i, s i) ≤ ∑' i, mstar (s i))
  (A B : Set α) : mstar (A ∪ B) ≤ mstar A + mstar B := by sorry
