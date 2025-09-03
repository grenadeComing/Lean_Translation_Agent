import Mathlib

/-- Suppose f is continuous on a region s (an open connected set) in a nontrivially normed field 𝕜.
    If F and G are primitives of f on s (i.e., have derivative f at every point of s),
    then F and G differ by a constant on s. -/
theorem Shakarchi_exercise_1_26 {𝕜 : Type _} [NontriviallyNormedField 𝕜] {s : Set 𝕜}
  (hs_open : IsOpen s) (hs_conn : IsConnected s)
  {f F G : 𝕜 → 𝕜} (hcont : ContinuousOn f s)
  (hF : ∀ x ∈ s, HasDerivAt F (f x) x) (hG : ∀ x ∈ s, HasDerivAt G (f x) x) :
  ∃ c : 𝕜, ∀ x ∈ s, F x = G x + c := by sorry
