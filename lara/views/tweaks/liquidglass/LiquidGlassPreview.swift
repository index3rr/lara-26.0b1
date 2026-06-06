//
//  LiquidGlassPreview.swift
//  lara
//
//  Created by lunginspector on 5/13/26.
//

import SwiftUI

struct LiquidGlassPreview: View {
    @Binding var lgDisabled: Bool
    @Binding var lgFallback: Bool

    var body: some View {
        VStack(spacing: 20) {
            if lgFallback && !lgDisabled {
                HStack(spacing: 12) {
                    Image(systemName: "wrench.and.screwdriver")
                        .foregroundStyle(.white)
                        .frame(width: 45, height: 45)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 14))
                    VStack(alignment: .leading) {
                        Text("App Notification")
                            .fontWeight(.medium)
                        Text("This is a notification!")
                    }
                    .font(.system(size: 14))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(14)
                .background(Color(.systemGray))
                .clipShape(.rect(cornerRadius: 26))
            } else if lgDisabled {
                HStack(spacing: 12) {
                    Image(systemName: "wrench.and.screwdriver")
                        .foregroundStyle(.white)
                        .frame(width: 45, height: 45)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 14))
                    VStack(alignment: .leading) {
                        Text("App Notification")
                            .fontWeight(.medium)
                        Text("This is a notification!")
                    }
                    .font(.system(size: 14))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(14)
                .background(.black)
                .clipShape(.rect(cornerRadius: 26))
            } else if #available(iOS 19.0, *) {
                HStack(spacing: 12) {
                    Image(systemName: "wrench.and.screwdriver")
                        .foregroundStyle(.white)
                        .frame(width: 45, height: 45)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 14))
                    VStack(alignment: .leading) {
                        Text("App Notification")
                            .fontWeight(.medium)
                        Text("This is a notification!")
                    }
                    .font(.system(size: 14))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(14)
                .glassEffect(.clear, in: RoundedRectangle(cornerRadius: 26))
            } else {
                HStack(spacing: 12) {
                    Image(systemName: "wrench.and.screwdriver")
                        .foregroundStyle(.white)
                        .frame(width: 45, height: 45)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 14))
                    VStack(alignment: .leading) {
                        Text("App Notification")
                            .fontWeight(.medium)
                        Text("This is a notification!")
                    }
                    .font(.system(size: 14))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(14)
            }

            HStack {
                if lgFallback && !lgDisabled {
                    Image(systemName: "flashlight.off.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                        .background(Color(.systemGray))
                        .clipShape(.capsule)
                } else if lgDisabled {
                    Image(systemName: "flashlight.off.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(.capsule)
                } else if #available(iOS 19.0, *) {
                    Image(systemName: "flashlight.off.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                        .glassEffect(.clear.interactive(), in: Capsule())
                } else {
                    Image(systemName: "flashlight.off.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                }

                Spacer()

                if lgFallback && !lgDisabled {
                    Image(systemName: "camera.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                        .background(Color(.systemGray))
                        .clipShape(.capsule)
                } else if lgDisabled {
                    Image(systemName: "camera.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(.capsule)
                } else if #available(iOS 19.0, *) {
                    Image(systemName: "camera.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                        .glassEffect(.clear.interactive(), in: Capsule())
                } else {
                    Image(systemName: "camera.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                }
            }
            .padding(.horizontal, 30)

            Capsule()
                .frame(width: 145, height: 4)
        }
        .foregroundStyle(.white)
        .padding(.horizontal)
        .padding(.top)
        .padding(.bottom, 10)
        .background {
            Image("solarium")
                .resizable()
                .scaledToFill()
                .brightness(-0.1)
        }
    }
}

