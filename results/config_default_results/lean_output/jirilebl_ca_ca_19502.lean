import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Then the geometric series ∑_{n=1}^∞ |z|^n equals |z| / (1 - |z|). -/
theorem sum_abs_geometric_of_abs_lt_one {z : Complex} (h : Complex.abs z < 1) :
  Summable (fun n : ℕ => (Complex.abs z) ^ (n + 1)) ∧
  ∑' (n : ℕ), (Complex.abs z) ^ (n + 1) = Complex.abs z / (1 - Complex.abs z) :=
by
  have h' : Complex.abs z ∈ Set.Ioo 0 1 := by
    refine' Set.mem_Ioo.2 ⟨by linarith [h], by linarith [h]⟩
  have := Summable.pow_right_of_lt_1 (Complex.abs z) (by linarith : (Complex.abs z) < 1)
  -- Use known result: geometric series sum for real r with |r| < 1
  have ssum : Summable fun n => (Complex.abs z) ^ n := by
    simpa using this
  have t := tsum_geometric_of_abs_lt_1 (Complex.abs z) (by linarith : Complex.abs z < 1)
  -- Now adjust index to start at n+1
  have ssum_shift : Summable fun n => (Complex.abs z) ^ (n + 1) := by
    simpa using ssum.mul_left (Complex.abs z)
  have tsum_shift : ∑' n, (Complex.abs z) ^ (n + 1) = Complex.abs z / (1 - Complex.abs z) := by
    -- Use tsum_mul_left or similar lemma
    have : ∑' n, (Complex.abs z) ^ (n + 1) = Complex.abs z * ∑' n, (Complex.abs z) ^ n := by
      simp [tsum_mul_left]
    simp [this, t]
  exact ⟨ssum_shift, tsum_shift⟩
