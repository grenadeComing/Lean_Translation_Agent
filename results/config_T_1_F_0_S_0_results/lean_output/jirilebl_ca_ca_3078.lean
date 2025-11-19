import Mathlib

/-
If f : U → ℂ is a holomorphic function on a domain U ⊂ ℂ, then f is analytic.
That is, given z0 ∈ U, f has a Taylor series, and it converges in the disk
{ z : |z-z0| < R }, where R is the distance to the nearest singularity
(possibly R = ∞). Furthermore, the sum of the series is f.

The statement below records this fact: for each z0 ∈ U we set
R = Inf (Set.image (fun w => Complex.abs (w - z0)) (Uᶜ)), and then the Taylor
series with coefficients iteratedDeriv n f z0 / n! converges to f on the disk
|z - z0| < R.

(The proof is omitted.)
-/

open Complex Set

theorem holomorphic_on_is_analytic_at {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (h_dom : U.Nonempty) (h_holo : IsHolomorphicOn f U) :
  ∀ z0 : ℂ, z0 ∈ U →
    let R := Inf (Set.image (fun w => Complex.abs (w - z0)) (Uᶜ)) in
    0 ≤ R ∧
    ∀ z : ℂ, Complex.abs (z - z0) < R →
      (∑' n : ℕ, (iteratedDeriv n f z0 / (Nat.cast (Nat.factorial n) : ℂ)) * (z - z0) ^ n) = f z :=
by sorry